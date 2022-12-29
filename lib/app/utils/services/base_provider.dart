import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:product_checklist/app/utils/network/index.dart';

class BaseProvider extends GetConnect {
  @override
  InternalFinalCallback<void> get onStart {
    httpClient.baseUrl = Url.baseUrl;
    httpClient.addRequestModifier((Request<dynamic> request) {
      return request;
    });
    return super.onStart;
  }

  @override
  Future<Response<T>> get<T>(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
  }) {
    Map<String, String>? additionalHeader = headers;
    additionalHeader ??= <String, String>{};
    additionalHeader.addAll(RequestInterceptor.getHeaders);
    additionalHeader.forEach((String key, dynamic value) {
      additionalHeader![key] = value.toString();
    });
    Map<String, dynamic>? queries = query;
    queries ??= <String, dynamic>{};
    queries.addAll(RequestInterceptor.getQueries);
    queries.forEach((String key, dynamic value) {
      queries![key] = value.toString();
    });
    return super.get(
      url,
      headers: additionalHeader,
      contentType: contentType,
      query: queries,
      decoder: decoder,
    );
  }

  @override
  Future<Response<T>> post<T>(
    String? url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    Map<String, String>? additionalHeader = headers;
    additionalHeader ??= <String, String>{};
    additionalHeader.addAll(RequestInterceptor.getHeaders);
    additionalHeader.forEach((String key, dynamic value) {
      additionalHeader![key] = value.toString();
    });

    var bodi = json.encode(body);

    Map<String, dynamic>? queries = query;
    queries ??= <String, dynamic>{};
    queries.addAll(RequestInterceptor.getQueries);
    queries.forEach((String key, dynamic value) {
      queries![key] = value.toString();
    });
    return super.post(
      url,
      bodi,
      contentType: contentType,
      headers: additionalHeader,
      query: queries,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }

  @override
  Future<Response<T>> put<T>(
    String url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    Map<String, String>? additionalHeader = headers;
    additionalHeader ??= <String, String>{};
    additionalHeader.addAll(RequestInterceptor.getHeaders);
    additionalHeader.forEach((String key, dynamic value) {
      additionalHeader![key] = value.toString();
    });

    var bodi = json.encode(body);

    Map<String, dynamic>? queries = query;
    queries ??= <String, dynamic>{};
    queries.addAll(RequestInterceptor.getQueries);
    queries.forEach((String key, dynamic value) {
      queries![key] = value.toString();
    });
    return super.put(
      url,
      bodi,
      contentType: contentType,
      headers: additionalHeader,
      query: queries,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
  }

  @override
  Future<Response<T>> delete<T>(
    String url, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Decoder<T>? decoder,
    Progress? uploadProgress,
  }) {
    Map<String, String>? additionalHeader = headers;
    additionalHeader ??= <String, String>{};
    additionalHeader.addAll(RequestInterceptor.getHeaders);
    additionalHeader.forEach((String key, dynamic value) {
      additionalHeader![key] = value.toString();
    });

    Map<String, dynamic>? queries = query;
    queries ??= <String, dynamic>{};
    queries.addAll(RequestInterceptor.getQueries);
    queries.forEach((String key, dynamic value) {
      queries![key] = value.toString();
    });
    return super.delete(
      url,
      contentType: contentType,
      headers: additionalHeader,
      query: queries,
      decoder: decoder,
    );
  }
}
