.class Lcom/chartboost/sdk/impl/bf$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bf;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bf;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0, p3}, Lcom/chartboost/sdk/impl/bf;->f(Lcom/chartboost/sdk/impl/bf;I)I

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0, p4}, Lcom/chartboost/sdk/impl/bf;->g(Lcom/chartboost/sdk/impl/bf;I)I

    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->h(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v0, v3

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    if-ne v1, p3, :cond_3

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    if-ne v1, p4, :cond_3

    move v1, v3

    .line 355
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bf;->d(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->e(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->e(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(I)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()V

    .line 361
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 353
    goto :goto_0

    :cond_3
    move v1, v2

    .line 354
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->m(Lcom/chartboost/sdk/impl/bf;)V

    .line 366
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$6;->a:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;Z)V

    .line 372
    return-void
.end method
