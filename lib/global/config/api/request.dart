import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// A composable class for making HTTP requests.
class HttpRequest {
  static http.Client client = http.Client();

  static String tokenFromLocalStorage = '';

  static String bearerToken = 'Bearer $tokenFromLocalStorage';

  static final Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json;charset=UTF-8',
    'Charset': 'utf-8',
    'authorization': bearerToken,
  };

  /// Sends an HTTP POST request with the given headers and body to the given URL.
  static httpAuthenticateRequest({
    required String requestURL,
    Map<String, String>? requestHeaders,
    Object? requestMapBody,
    Encoding? encoding,
  }) async {
    final url = Uri.parse(requestURL);
    final headers = requestHeaders ?? {};
    final body = requestMapBody ?? {};
    try {
      final result = await http.post(
        url,
        headers: headers,
        body: body,
      );
      return jsonDecode(result.body);
    } catch (exc) {
      if (kDebugMode) {
        print(exc.toString());
        return false;
      }
      return false;
    }
  }

  /// Sends an HTTP GET request with the given headers to the given URL.
  httpGetRequest({
    required String requestURL,
    Map<String, String>? requestHeaders,
  }) async {
    final url = Uri.parse(requestURL);
    final headers = requestHeaders ?? defaultHeaders;
    try {
      final result = await client.get(
        url,
        headers: headers,
      );
      return jsonDecode(result.body);
    } catch (exc) {
      if (kDebugMode) {
        print(exc.toString());
      }

      rethrow;
    }
  }

  /// Sends an HTTP POST request with the given headers and body to the given URL.
  static httpPostRequest({
    required String requestURL,
    Map<String, String>? requestHeaders,
    Object? requestBody,
    Encoding? encoding,
  }) async {
    final url = Uri.parse(requestURL);
    final headers = requestHeaders ?? defaultHeaders;
    final body = requestBody != null ? jsonEncode(requestBody) : null;
    try {
      final result = await client.post(
        url,
        headers: headers,
        body: body,
      );
      return jsonDecode(result.body);
    } catch (exc) {
      if (kDebugMode) {
        print(exc.toString());
      }

      rethrow;
    }
  }

  /// Sends an HTTP PUT request with the given headers and body to the given URL.
  httpPutRequest({
    required String requestURL,
    Map<String, String>? requestHeaders,
    Object? requestBody,
    Encoding? encoding,
  }) async {
    final url = Uri.parse(requestURL);
    final headers = requestHeaders ?? defaultHeaders;
    final body = requestBody != null ? jsonEncode(requestBody) : null;
    try {
      final result = await client.put(
        url,
        headers: headers,
        body: body,
      );
      return jsonDecode(result.body);
    } catch (exc) {
      if (kDebugMode) {
        print(exc.toString());
      }

      rethrow;
    }
  }

  /// Sends an HTTP DELETE request with the given headers to the given URL.
  static httpDeleteRequest({
    required String requestURL,
    Map<String, String>? requestHeaders,
    Object? requestBody,
    Encoding? encoding,
  }) async {
    final url = Uri.parse(requestURL);
    final headers = requestHeaders ?? defaultHeaders;
    final body = requestBody != null ? jsonEncode(requestBody) : null;
    try {
      final result = await client.delete(
        url,
        headers: headers,
        body: body,
      );
      return jsonDecode(result.body);
    } catch (exc) {
      if (kDebugMode) {
        print(exc.toString());
      }
      rethrow;
    }
  }
}
