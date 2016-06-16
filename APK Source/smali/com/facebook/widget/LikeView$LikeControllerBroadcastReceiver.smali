.class Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeControllerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LikeView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/widget/LikeView;->access$600(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$700(Lcom/facebook/widget/LikeView;)V

    goto :goto_1

    :cond_4
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$800(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/LikeView$OnErrorListener;
    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$800(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/widget/LikeView$OnErrorListener;->onError(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    const-string v1, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # getter for: Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/widget/LikeView;->access$600(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/LikeView;->access$900(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$700(Lcom/facebook/widget/LikeView;)V

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_0
.end method
