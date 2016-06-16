.class Lcom/chartboost/sdk/impl/bg$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bg;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bg;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bg;->d(Lcom/chartboost/sdk/impl/bg;I)I

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->g(Lcom/chartboost/sdk/impl/bg;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bg;->c(Lcom/chartboost/sdk/impl/bg;I)I

    .line 252
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->h(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->h(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg$3;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bg;->d(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 256
    :cond_0
    return-void
.end method
