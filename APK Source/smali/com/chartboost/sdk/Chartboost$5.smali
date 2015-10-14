.class final Lcom/chartboost/sdk/Chartboost$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->f()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost$5;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->e(Lcom/chartboost/sdk/Libraries/k;)V

    .line 194
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$5;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;Z)V

    .line 198
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 201
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()V

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 205
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->h()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->b(Landroid/content/Context;)Landroid/content/Intent;

    .line 208
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->i()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->a()V

    .line 209
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->j()Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->f()V

    .line 210
    return-void
.end method
