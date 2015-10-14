.class Lcom/facebook/internal/LikeActionController$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LikeActionController;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 10

    const-string v7, "social_sentence"

    const-string v4, "like_count_string"

    const-string v6, "object_is_liked"

    if-eqz p2, :cond_0

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$800(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/LikeActionController;->access$900(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "like_count_string"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "like_count_string"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1000(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/LikeActionController;->access$1100(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "social_sentence"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "social_sentence"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move-object v4, v0

    :goto_2
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_3
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_4
    const-string v7, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->appEventsLogger:Lcom/facebook/AppEventsLogger;
    invoke-static {v7}, Lcom/facebook/internal/LikeActionController;->access$1300(Lcom/facebook/internal/LikeActionController;)Lcom/facebook/AppEventsLogger;

    move-result-object v7

    const-string v8, "fb_like_control_dialog_did_succeed"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # invokes: Lcom/facebook/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/LikeActionController;->access$1400(Lcom/facebook/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1200(Lcom/facebook/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_4

    :cond_4
    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object v3, v2

    move-object v2, v0

    goto :goto_1
.end method

.method public onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 5

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$1500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Like Dialog failed with error : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v1, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v2, "present_dialog"

    # invokes: Lcom/facebook/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/LikeActionController;->access$1600(Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    # getter for: Lcom/facebook/internal/LikeActionController;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/internal/LikeActionController;->access$1700(Lcom/facebook/internal/LikeActionController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$5;->this$0:Lcom/facebook/internal/LikeActionController;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    # invokes: Lcom/facebook/internal/LikeActionController;->broadcastAction(Landroid/content/Context;Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2, p3}, Lcom/facebook/internal/LikeActionController;->access$1800(Landroid/content/Context;Lcom/facebook/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$5;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_0
.end method
