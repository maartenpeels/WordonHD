.class Lcom/heyzap/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseBytes:[B

.field final synthetic val$statusCode:I

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/heyzap/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    iput p3, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    invoke-virtual {v0, v1}, Lcom/heyzap/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    new-instance v2, Lcom/heyzap/http/JsonHttpResponseHandler$2$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/http/JsonHttpResponseHandler$2$1;-><init>(Lcom/heyzap/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/heyzap/http/JsonHttpResponseHandler$2;->this$0:Lcom/heyzap/http/JsonHttpResponseHandler;

    new-instance v2, Lcom/heyzap/http/JsonHttpResponseHandler$2$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/http/JsonHttpResponseHandler$2$2;-><init>(Lcom/heyzap/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
