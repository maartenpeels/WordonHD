.class public Lcom/heyzap/house/view/FullscreenVideoView;
.super Landroid/widget/FrameLayout;
.source "FullscreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;,
        Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;,
        Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;
    }
.end annotation


# instance fields
.field public bufferProgress:I

.field private context:Landroid/content/Context;

.field private controlView:Lcom/heyzap/house/view/VideoControlView;

.field private listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

.field public loadingSpinner:Landroid/app/ProgressDialog;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private model:Lcom/heyzap/house/model/VideoModel;

.field private mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

.field private playbackDuration:I

.field public playbackTimer:Ljava/util/Timer;

.field private totalDuration:I

.field public videoSurface:Landroid/view/SurfaceView;

.field public waitMillisBeforeSkipShow:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->waitMillisBeforeSkipShow:Ljava/lang/Integer;

    .line 58
    iput v3, p0, Lcom/heyzap/house/view/FullscreenVideoView;->bufferProgress:I

    .line 59
    iput v3, p0, Lcom/heyzap/house/view/FullscreenVideoView;->totalDuration:I

    .line 60
    iput v3, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I

    .line 69
    iput-object p1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    .line 71
    invoke-virtual {p0, v4}, Lcom/heyzap/house/view/FullscreenVideoView;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0, v4}, Lcom/heyzap/house/view/FullscreenVideoView;->setFocusableInTouchMode(Z)V

    .line 74
    iput-object p3, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    .line 75
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 78
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    new-instance v0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-direct {v0, p0, v5}, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    .line 80
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 81
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 82
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 83
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 84
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mpListener:Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 85
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/heyzap/house/view/FullscreenVideoView;->setBackgroundColor(I)V

    .line 90
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;

    invoke-direct {v1, p0, v5}, Lcom/heyzap/house/view/FullscreenVideoView$VideoSurfaceViewCallback;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 98
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v0, Lcom/heyzap/house/view/VideoControlView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/heyzap/house/view/VideoControlView;-><init>(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;)V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    .line 104
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    new-instance v1, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;

    invoke-direct {v1, p0, v5}, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/VideoControlView;->setOnActionListener(Lcom/heyzap/house/view/VideoControlView$OnActionListener;)V

    .line 105
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/house/view/FullscreenVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->showControls()V

    .line 109
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->render()Ljava/lang/Boolean;

    .line 110
    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/heyzap/house/view/FullscreenVideoView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I

    return v0
.end method

.method static synthetic access$502(Lcom/heyzap/house/view/FullscreenVideoView;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I

    return p1
.end method

.method static synthetic access$600(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/model/VideoModel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 300
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 303
    :cond_1
    return-void
.end method

.method public getPlaybackDuration()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I

    return v0
.end method

.method public getTotalVideoDuration()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->totalDuration:I

    return v0
.end method

.method public hide(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 314
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 319
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->clear()V

    .line 324
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    .line 329
    :cond_2
    return-void
.end method

.method public hideControls()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/heyzap/house/view/VideoControlView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public isReady()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 333
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowSkip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v1}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 344
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    :cond_3
    :goto_0
    move v0, v2

    .line 353
    :goto_1
    return v0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowHide:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->hide(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 353
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onVideoSizeChanged(II)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 177
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 180
    iget-object v2, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    .line 183
    iget-object v4, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 185
    if-le v3, v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff999999999999aL    # 1.6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 186
    int-to-float v0, p2

    int-to-float v2, p1

    div-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v6

    move v2, v0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 195
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 196
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    invoke-virtual {v1, v0}, Lcom/heyzap/house/view/VideoControlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void

    .line 190
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    move v2, v6

    goto :goto_0
.end method

.method public onVideoStart()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 140
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->show()V

    .line 144
    :cond_0
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->totalDuration:I

    .line 148
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 155
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    .line 156
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    new-instance v1, Lcom/heyzap/house/view/FullscreenVideoView$1;

    invoke-direct {v1, p0}, Lcom/heyzap/house/view/FullscreenVideoView$1;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;)V

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 164
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowSkip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v2}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v2

    iget-object v2, v2, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/house/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;J)V

    .line 174
    :cond_2
    :goto_0
    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/heyzap/house/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;J)V

    goto :goto_0

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowHide:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/VideoControlView;->addHideButton()V

    goto :goto_0
.end method

.method public onVideoTick()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 128
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 133
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 135
    iget-object v2, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    invoke-virtual {v2, v1, v0}, Lcom/heyzap/house/view/VideoControlView;->updateScrubber(IF)V

    goto :goto_0
.end method

.method public render()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const-string v0, "local"

    const-string v0, "Local file not found. No fallback to streaming."

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldForceStreaming()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getStreamingUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->render(Landroid/net/Uri;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    .line 257
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->isFileCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getCachedPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "local"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->cancelDownload()V

    .line 271
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->shouldAllowFallbackToStreaming()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    const-string v0, "Local file not found. Falling back to stream and cancelling download."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getStreamingUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->render(Landroid/net/Uri;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getCachedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->render(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 262
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 275
    :cond_4
    :try_start_4
    const-string v0, "Local file not found. No fallback to streaming."

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Local file not found. No fallback to streaming."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 279
    :catch_1
    move-exception v0

    .line 280
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 282
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 286
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :cond_6
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public render(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Loading..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    .line 206
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 207
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public render(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "File does not exist."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 233
    :goto_0
    :try_start_1
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 234
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 238
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 240
    if-eqz v1, :cond_1

    .line 242
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    :cond_1
    :goto_1
    return-object v0

    .line 224
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :try_start_4
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 228
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 230
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 240
    if-eqz v2, :cond_1

    .line 242
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 243
    :catch_1
    move-exception v1

    .line 244
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 243
    :catch_2
    move-exception v1

    .line 244
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_3

    .line 242
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 245
    :cond_3
    :goto_3
    throw v0

    .line 243
    :catch_3
    move-exception v1

    .line 244
    invoke-static {v1}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 240
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 232
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->show()V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 362
    return-void
.end method

.method public showControls()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 115
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/heyzap/house/view/VideoControlView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView;->controlView:Lcom/heyzap/house/view/VideoControlView;

    invoke-virtual {v1, v0}, Lcom/heyzap/house/view/VideoControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 309
    :cond_0
    return-void
.end method
