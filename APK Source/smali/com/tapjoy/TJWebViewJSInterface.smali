.class public Lcom/tapjoy/TJWebViewJSInterface;
.super Ljava/lang/Object;
.source "TJWebViewJSInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TJWebViewJSInterface"


# instance fields
.field notifier:Lcom/tapjoy/TJWebViewJSInterfaceNotifier;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceNotifier;)V
    .locals 0
    .param p1, "w"    # Landroid/webkit/WebView;
    .param p2, "n"    # Lcom/tapjoy/TJWebViewJSInterfaceNotifier;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tapjoy/TJWebViewJSInterface;->webView:Landroid/webkit/WebView;

    .line 29
    iput-object p2, p0, Lcom/tapjoy/TJWebViewJSInterface;->notifier:Lcom/tapjoy/TJWebViewJSInterfaceNotifier;

    .line 30
    return-void
.end method


# virtual methods
.method public callback(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "arguments":Lorg/json/JSONArray;
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "arguments":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public callback(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v0, "arguments":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 124
    .local v2, "resultData":Lorg/json/JSONObject;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    invoke-virtual {p0, v0, p2, p3}, Lcom/tapjoy/TJWebViewJSInterface;->callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "arguments":Lorg/json/JSONArray;
    .end local v2    # "resultData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TJWebViewJSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in callback to JS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public callbackToJavaScript(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callbackID"    # Ljava/lang/String;

    .prologue
    const-string v7, "TJWebViewJSInterface"

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "arguments"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 159
    const-string v4, "method"

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .local v3, "message":Lorg/json/JSONObject;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 165
    const-string v4, "callbackId"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_1
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "js":Ljava/lang/String;
    new-instance v4, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;

    iget-object v5, p0, Lcom/tapjoy/TJWebViewJSInterface;->webView:Landroid/webkit/WebView;

    invoke-direct {v4, p0, v5}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;-><init>(Lcom/tapjoy/TJWebViewJSInterface;Landroid/webkit/WebView;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/tapjoy/TJWebViewJSInterface$LoadJSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    const-string v4, "TJWebViewJSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendToJS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "js":Ljava/lang/String;
    .end local v3    # "message":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TJWebViewJSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in callback to JS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchMethod(Ljava/lang/String;)V
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v6, "TJWebViewJSInterface"

    .line 51
    const-string v4, "TJWebViewJSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMethod params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "method"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "method":Ljava/lang/String;
    const-string v4, "TJWebViewJSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/tapjoy/TJWebViewJSInterface;->notifier:Lcom/tapjoy/TJWebViewJSInterfaceNotifier;

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/tapjoy/TJWebViewJSInterface;->notifier:Lcom/tapjoy/TJWebViewJSInterfaceNotifier;

    invoke-interface {v4, v3, v2}, Lcom/tapjoy/TJWebViewJSInterfaceNotifier;->dispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "method":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
