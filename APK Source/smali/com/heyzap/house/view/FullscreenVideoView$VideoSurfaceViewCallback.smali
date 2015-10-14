.class Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
