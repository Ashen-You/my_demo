package com.example.my_demo;

import android.app.Application;
import android.content.Context;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import io.flutter.embedding.android.FlutterEngineProvider;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.MethodChannel;

public class App extends Application implements FlutterEngineProvider {
    private FlutterEngine flutterEngine;

    @Override
    public void onCreate() {
        Log.d("Ashen", "test");
        super.onCreate();

        // 创建 Flutter 引擎实例
        flutterEngine = new FlutterEngine(this);

        // 在引擎上执行任何必要的配置
        flutterEngine.getDartExecutor().executeDartEntrypoint(DartExecutor.DartEntrypoint.createDefault());

        MethodChannel methodChannel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), "myChannel");
        methodChannel.invokeMethod("myMethod", "", new MethodChannel.Result() {
            @Override
            public void success(Object result) {
                Log.d("Ashen", result.toString());
            }

            @Override
            public void error(@NonNull String errorCode, String errorMessage, Object errorDetails) {}

            @Override
            public void notImplemented() {}
        });

    }

    @Nullable
    @Override
    public FlutterEngine provideFlutterEngine(@NonNull Context context) {
        return flutterEngine;
    }
}
