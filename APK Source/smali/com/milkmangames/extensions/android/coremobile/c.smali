.class final Lcom/milkmangames/extensions/android/coremobile/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/c;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/c;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/c;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v1}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/c;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    const-string v2, "NETWORK_REACHABILITY_CHANGED"

    if-eqz v0, :cond_1

    const-string v3, "true"

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/milkmangames/extensions/android/coremobile/c;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v1, v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Lcom/milkmangames/extensions/android/coremobile/b;Z)Z

    goto :goto_0

    :cond_1
    const-string v3, "false"

    goto :goto_1
.end method
