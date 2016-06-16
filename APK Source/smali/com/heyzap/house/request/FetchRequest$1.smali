.class Lcom/heyzap/house/request/FetchRequest$1;
.super Ljava/lang/Object;
.source "FetchRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/request/FetchRequest;->execute(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/request/FetchRequest;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fetchHandler:Lcom/heyzap/house/abstr/AbstractFetchHandler;


# direct methods
.method constructor <init>(Lcom/heyzap/house/request/FetchRequest;Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractFetchHandler;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest$1;->this$0:Lcom/heyzap/house/request/FetchRequest;

    iput-object p2, p0, Lcom/heyzap/house/request/FetchRequest$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heyzap/house/request/FetchRequest$1;->val$fetchHandler:Lcom/heyzap/house/abstr/AbstractFetchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest$1;->this$0:Lcom/heyzap/house/request/FetchRequest;

    invoke-virtual {v1}, Lcom/heyzap/house/request/FetchRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest$1;->this$0:Lcom/heyzap/house/request/FetchRequest;

    iget-object v3, p0, Lcom/heyzap/house/request/FetchRequest$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/heyzap/house/request/FetchRequest;->getParams(Landroid/content/Context;)Lcom/heyzap/http/RequestParams;

    move-result-object v2

    iget-object v3, p0, Lcom/heyzap/house/request/FetchRequest$1;->val$fetchHandler:Lcom/heyzap/house/abstr/AbstractFetchHandler;

    invoke-static {v0, v1, v2, v3}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 230
    return-void
.end method
