.class final Lcom/milkmangames/extensions/android/coremobile/v;
.super Ljava/lang/Object;

# interfaces
.implements Lc/m/x/a/cm/d;


# instance fields
.field final synthetic a:Lcom/milkmangames/extensions/android/coremobile/b;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/coremobile/b;)V
    .locals 0

    iput-object p1, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Z)Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Stop action: unregister sensors."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->d(Lcom/milkmangames/extensions/android/coremobile/b;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Stop action: sensors disabled."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Z)Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Start action: register sensors."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->e(Lcom/milkmangames/extensions/android/coremobile/b;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Start action: sensors disabled."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Restart."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a(Z)Z

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Restart action: register sensors."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->e(Lcom/milkmangames/extensions/android/coremobile/b;)V

    :goto_0
    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-virtual {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->a()V

    return-void

    :cond_0
    const-string v0, "Restart action: sensors disabled."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Pause."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->c(Lcom/milkmangames/extensions/android/coremobile/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Pause action: unregister sensors."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/milkmangames/extensions/android/coremobile/v;->a:Lcom/milkmangames/extensions/android/coremobile/b;

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->d(Lcom/milkmangames/extensions/android/coremobile/b;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Pause action: sensors disabled."

    invoke-static {v0}, Lcom/milkmangames/extensions/android/coremobile/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lcom/milkmangames/extensions/android/coremobile/b;->a:Ljava/lang/String;

    const-string v1, "Destroy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
