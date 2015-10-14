.class Lcom/heyzap/http/JsonHttpResponseHandler$1$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

.field final synthetic val$jsonResponse:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/heyzap/http/JsonHttpResponseHandler$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/heyzap/http/JsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object p0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/heyzap/http/JsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object p0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2, p0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/heyzap/http/JsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected response type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
