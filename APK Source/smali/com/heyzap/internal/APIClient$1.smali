.class final Lcom/heyzap/internal/APIClient$1;
.super Ljava/lang/Object;
.source "APIClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/APIClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Lcom/heyzap/http/RequestParams;

.field final synthetic val$responseHandler:Lcom/heyzap/http/AsyncHttpResponseHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heyzap/http/RequestParams;Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/heyzap/internal/APIClient$1;->val$params:Lcom/heyzap/http/RequestParams;

    iput-object p2, p0, Lcom/heyzap/internal/APIClient$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heyzap/internal/APIClient$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/heyzap/internal/APIClient$1;->val$responseHandler:Lcom/heyzap/http/AsyncHttpResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 74
    iget-object v0, p0, Lcom/heyzap/internal/APIClient$1;->val$params:Lcom/heyzap/http/RequestParams;

    iget-object v1, p0, Lcom/heyzap/internal/APIClient$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/heyzap/internal/APIClient;->augmentParams(Lcom/heyzap/http/RequestParams;Landroid/content/Context;)Lcom/heyzap/http/RequestParams;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/heyzap/internal/APIClient$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/heyzap/internal/APIClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/heyzap/internal/APIClient;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "GET %s?%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/heyzap/internal/Logger;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    # getter for: Lcom/heyzap/internal/APIClient;->client:Lcom/heyzap/http/AsyncHttpClient;
    invoke-static {}, Lcom/heyzap/internal/APIClient;->access$200()Lcom/heyzap/http/AsyncHttpClient;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/internal/APIClient$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/heyzap/internal/APIClient$1;->val$responseHandler:Lcom/heyzap/http/AsyncHttpResponseHandler;

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/heyzap/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/ResponseHandlerInterface;)Lcom/heyzap/http/RequestHandle;

    .line 78
    return-void
.end method
