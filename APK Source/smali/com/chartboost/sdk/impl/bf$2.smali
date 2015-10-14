.class Lcom/chartboost/sdk/impl/bf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 243
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x3

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;I)I

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;I)I

    .line 248
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;I)I

    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->c(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->d(Lcom/chartboost/sdk/impl/bf;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->e(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    .line 256
    if-eqz v0, :cond_1

    .line 257
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bf;->a(I)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->f(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->a(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->g(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bf;->b(Lcom/chartboost/sdk/impl/bf;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->h(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()V

    .line 278
    :cond_2
    :goto_0
    return-void

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bf;->h(Lcom/chartboost/sdk/impl/bf;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bf$2;->a:Lcom/chartboost/sdk/impl/bf;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bf;->a()V

    goto :goto_0
.end method
