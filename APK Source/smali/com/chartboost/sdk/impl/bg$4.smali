.class Lcom/chartboost/sdk/impl/bg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 259
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 261
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->i(Lcom/chartboost/sdk/impl/bg;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0, v3}, Lcom/chartboost/sdk/impl/bg;->c(Lcom/chartboost/sdk/impl/bg;I)I

    .line 263
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0, v3}, Lcom/chartboost/sdk/impl/bg;->d(Lcom/chartboost/sdk/impl/bg;I)I

    .line 266
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->j(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bg;->j(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bg$4;->a:Lcom/chartboost/sdk/impl/bg;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bg;->d(Lcom/chartboost/sdk/impl/bg;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 271
    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method
