.class final Lcom/milkmangames/extensions/android/goviral/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5

    const-string v4, "apprequests"

    const-string v2, "[GVExtension]"

    const-string v0, "[GVExtension]"

    const-string v0, "onComplete rbu"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string v0, "[GVExtension]"

    const-string v0, "Request complete no err."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/facebook/FacebookDialogException;

    if-eqz v0, :cond_3

    const-string v0, "[GVExtension]"

    const-string v0, "DialogException."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/facebook/FacebookDialogException;

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p2}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/FacebookDialogException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apprequests"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/facebook/FacebookServiceException;

    if-eqz v0, :cond_5

    const-string v0, "[GVExtension]"

    const-string v0, "Service exception..-."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/facebook/FacebookServiceException;

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SEM:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REC:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RECM:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "apprequests"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/FacebookServiceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apprequests"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "[GVExtension]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Facebook request dialog exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[GVExtension]"

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/t;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apprequests"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
