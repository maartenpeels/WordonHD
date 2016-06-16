.class Lcom/heyzap/house/handler/ClickHandler$4;
.super Ljava/lang/Object;
.source "ClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/ClickHandler;->gotoMarket(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/handler/ClickHandler;

.field final synthetic val$adUrl:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$4;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iput-object p2, p0, Lcom/heyzap/house/handler/ClickHandler$4;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/heyzap/house/handler/ClickHandler$4;->val$adUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$4;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$200(Lcom/heyzap/house/handler/ClickHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/heyzap/house/Manager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/house/handler/ClickHandler$4$1;

    invoke-direct {v1, p0}, Lcom/heyzap/house/handler/ClickHandler$4$1;-><init>(Lcom/heyzap/house/handler/ClickHandler$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    :cond_0
    return-void
.end method
