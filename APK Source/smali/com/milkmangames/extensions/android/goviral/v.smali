.class final Lcom/milkmangames/extensions/android/goviral/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/v;->d:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/milkmangames/extensions/android/goviral/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/milkmangames/extensions/android/goviral/v;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 9

    const-string v4, ""

    const-string v0, "[GVExtension]"

    const-string v1, "Complete graph."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/v;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/Response;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/v;->d:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getCategory()Lcom/facebook/FacebookRequestError$Category;

    move-result-object v0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/facebook/FacebookRequestError$Category;)I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_1
    iget-object v8, p0, Lcom/milkmangames/extensions/android/goviral/v;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/v;->d:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/v;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/v;->a:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v7, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/v;->d:Lcom/milkmangames/extensions/android/goviral/b;

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v4

    goto :goto_3

    :cond_4
    move-object v3, v0

    goto :goto_0
.end method
