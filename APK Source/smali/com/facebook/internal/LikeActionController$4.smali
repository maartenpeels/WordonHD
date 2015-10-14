.class final Lcom/facebook/internal/LikeActionController$4;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    # getter for: Lcom/facebook/internal/LikeActionController;->isPendingBroadcastReset:Z
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    # setter for: Lcom/facebook/internal/LikeActionController;->isPendingBroadcastReset:Z
    invoke-static {v2}, Lcom/facebook/internal/LikeActionController;->access$202(Z)Z

    # getter for: Lcom/facebook/internal/LikeActionController;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$700()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/LikeActionController$4$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/internal/LikeActionController$4$1;-><init>(Lcom/facebook/internal/LikeActionController$4;ZLandroid/content/Context;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
