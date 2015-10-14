.class Lcom/heyzap/house/handler/ClickHandler$5;
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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$5;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iput-object p2, p0, Lcom/heyzap/house/handler/ClickHandler$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/heyzap/house/handler/ClickHandler$5;->val$adUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$5;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    # getter for: Lcom/heyzap/house/handler/ClickHandler;->marketIntentLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/heyzap/house/handler/ClickHandler;->access$200(Lcom/heyzap/house/handler/ClickHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$5;->this$0:Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/house/handler/ClickHandler$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/heyzap/house/handler/ClickHandler$5;->val$adUrl:Ljava/lang/String;

    # invokes: Lcom/heyzap/house/handler/ClickHandler;->launchMarketIntent(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/heyzap/house/handler/ClickHandler;->access$300(Lcom/heyzap/house/handler/ClickHandler;Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method
