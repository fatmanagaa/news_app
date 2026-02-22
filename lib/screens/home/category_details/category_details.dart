import 'package:flutter/material.dart';
import 'package:news_app/core/app_styles.dart';
import 'package:news_app/model/source_response.dart';
import 'package:news_app/screens/home/category_details/source/source_widget.dart';
import 'package:news_app/screens/home/widget/main_loading_widget.dart';
import '../../../api/api_manger.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  late Future<SourceResponse> _sourcesFuture;

  @override
  void initState() {
    super.initState();
    _fetchSources();
  }

  void _fetchSources() {
    _sourcesFuture = ApiManger.getSources();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future: _sourcesFuture,
      builder: (context, snapshot) {
        /// 🔄 Loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MainLoadingWidget();

        }

        /// ❌ Network Error / Connection failed
        else if (snapshot.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Something went wrong: ${snapshot.error}',
                  style: AppStyles.bold16Black,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _fetchSources(); // Retry
                    });
                  },
                  child: Text(
                    'Try Again',
                    style: AppStyles.bold16White,
                  ),
                ),
              ],
            ),
          );
        }

        /// 📦 API Response وصل
        else if (snapshot.hasData) {
          /// ❌ API Error (status مش ok)
          if (snapshot.data!.status != 'ok') {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data!.message ?? 'API Error',
                    style: AppStyles.bold16Black,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _fetchSources(); // Retry
                      });
                    },
                    child: Text(
                      'Try Again',
                      style: AppStyles.bold16White,
                    ),
                  ),
                ],
              ),
            );
          }

          /// ✅ Success
          List<Source>? sourcesList = snapshot.data!.sources??[];
          return SourceWidget(sourcesList: sourcesList,);
        }

        /// ⚠️ Fallback
        return const Center(child: Text("No Data"));
      },
    );
  }
}