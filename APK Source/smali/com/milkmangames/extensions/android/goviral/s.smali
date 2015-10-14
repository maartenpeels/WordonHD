.class final Lcom/milkmangames/extensions/android/goviral/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/milkmangames/extensions/android/goviral/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/goviral/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/goviral/s;->b:Lcom/milkmangames/extensions/android/goviral/b;

    iput-object p2, p0, Lcom/milkmangames/extensions/android/goviral/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 5

    const-string v4, "feed"

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/s;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "feed"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, p1, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/s;->b:Lcom/milkmangames/extensions/android/goviral/b;

    const-string v1, "feed"

    iget-object v1, p0, Lcom/milkmangames/extensions/android/goviral/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/milkmangames/extensions/android/goviral/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/milkmangames/extensions/android/goviral/s;->b:Lcom/milkmangames/extensions/android/goviral/b;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed"

    iget-object v3, p0, Lcom/milkmangames/extensions/android/goviral/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/milkmangames/extensions/android/goviral/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
