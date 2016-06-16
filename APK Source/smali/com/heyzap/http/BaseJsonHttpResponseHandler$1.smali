.class Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/http/BaseJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/http/BaseJsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseString:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/heyzap/http/BaseJsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/BaseJsonHttpResponseHandler;

    iput-object p2, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    iput p3, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->val$statusCode:I

    iput-object p4, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->val$responseString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/BaseJsonHttpResponseHandler;->parseResponse(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1$1;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1$1;-><init>(Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;->this$0:Lcom/heyzap/http/BaseJsonHttpResponseHandler;

    new-instance v2, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1$2;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/http/BaseJsonHttpResponseHandler$1$2;-><init>(Lcom/heyzap/http/BaseJsonHttpResponseHandler$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/http/BaseJsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
