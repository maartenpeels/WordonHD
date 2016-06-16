.class Lcom/heyzap/http/JsonHttpResponseHandler$1$2;
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

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/heyzap/http/JsonHttpResponseHandler$1;Lorg/json/JSONException;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v0, v0, Lcom/heyzap/http/JsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget v1, v1, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$statusCode:I

    iget-object v2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->this$1:Lcom/heyzap/http/JsonHttpResponseHandler$1;

    iget-object v2, v2, Lcom/heyzap/http/JsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/heyzap/http/JsonHttpResponseHandler$1$2;->val$ex:Lorg/json/JSONException;

    const/4 p0, 0x0

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/heyzap/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 139
    return-void
.end method
