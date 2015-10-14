.class final Lcom/milkmangames/extensions/android/goviral/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$Callback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/r;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "[GVExtension]"

    const-string v3, "share"

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share Gesture is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Share dialog complete? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogDidComplete(Landroid/os/Bundle;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/r;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "share"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "post_id"

    invoke-static {p2}, Lcom/facebook/widget/FacebookDialog;->getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gvDialogType"

    const-string v2, "share"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/r;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v2, "share"

    iget-object v2, p0, Lcom/milkmangames/extensions/android/goviral/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/r;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const/16 v1, 0x190

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "share"

    iget-object v4, p0, Lcom/milkmangames/extensions/android/goviral/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
