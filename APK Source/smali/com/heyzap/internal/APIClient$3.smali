.class final Lcom/heyzap/internal/APIClient$3;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/APIClient;->postJson(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Lcom/heyzap/http/AsyncHttpResponseHandler;

.field final synthetic val$postData:Lorg/json/JSONObject;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/heyzap/internal/APIClient$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/heyzap/internal/APIClient$3;->val$postData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/heyzap/internal/APIClient$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/heyzap/internal/APIClient$3;->val$handler:Lcom/heyzap/http/AsyncHttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/heyzap/internal/APIClient$3;->val$url:Ljava/lang/String;

    # invokes: Lcom/heyzap/internal/APIClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/heyzap/internal/APIClient;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/heyzap/internal/APIClient$3;->val$postData:Lorg/json/JSONObject;

    const-string v3, "carrier"

    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->extraParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    iget-object v4, p0, Lcom/heyzap/internal/APIClient$3;->val$postData:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 123
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_1
    const-string v0, "POST %s?%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/heyzap/internal/APIClient$3;->val$postData:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    # getter for: Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;
    invoke-static {}, Lcom/heyzap/internal/APIClient;->access$200()Lcom/heyzap/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/internal/APIClient$3;->val$context:Landroid/content/Context;

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/heyzap/internal/APIClient$3;->val$postData:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    const-string v4, "application/json"

    iget-object v5, p0, Lcom/heyzap/internal/APIClient$3;->val$handler:Lcom/heyzap/http/AsyncHttpResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/heyzap/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
