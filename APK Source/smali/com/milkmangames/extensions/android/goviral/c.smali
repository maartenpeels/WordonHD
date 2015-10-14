.class final Lcom/milkmangames/extensions/android/goviral/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/c;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/Response;)V
    .locals 10

    const-string v3, "me/staging_resources"

    const-string v8, ""

    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/c;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const/4 v1, 0x2

    const-string v2, "Could not get write permissions"

    const-string v4, "me/staging_resources"

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/c;->a:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v5

    iget-object v6, p0, Lcom/milkmangames/extensions/android/goviral/c;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getCategory()Lcom/facebook/FacebookRequestError$Category;

    move-result-object v6

    invoke-static {v6}, Lcom/milkmangames/extensions/android/goviral/b;->a(Lcom/facebook/FacebookRequestError$Category;)I

    move-result v6

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v9, ""

    invoke-virtual/range {v0 .. v8}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string v7, ""

    move-object v7, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObjectList()Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/c;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p1}, Lcom/facebook/Response;->getRawResponse()Ljava/lang/String;

    move-result-object v1

    const-string v2, "me/staging_resources"

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    goto :goto_2
.end method
