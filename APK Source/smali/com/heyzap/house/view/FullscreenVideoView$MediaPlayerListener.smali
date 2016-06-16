.class Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iput p2, v0, Lcom/heyzap/house/view/FullscreenVideoView;->bufferProgress:I

    .line 538
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 543
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 545
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->completed()V

    .line 548
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 490
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->playbackTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 495
    packed-switch p2, :pswitch_data_0

    .line 501
    const-string v0, "Unknown"

    .line 505
    :goto_0
    sparse-switch p3, :sswitch_data_0

    .line 522
    const-string v1, "Unknown."

    .line 526
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer Error! What: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Extra: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->error()V

    .line 532
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 497
    :pswitch_0
    const-string v0, "Server Died."

    goto :goto_0

    .line 507
    :sswitch_0
    const-string v1, "Unsupported."

    goto :goto_1

    .line 510
    :sswitch_1
    const-string v1, "Timed Out."

    goto :goto_1

    .line 513
    :sswitch_2
    const-string v1, "Not Valid for Progressive Playback."

    goto :goto_1

    .line 516
    :sswitch_3
    const-string v1, "Malformed."

    goto :goto_1

    .line 519
    :sswitch_4
    const-string v1, "Error IO."

    goto :goto_1

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    .line 505
    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_0
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_4
        -0x6e -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    iget-object v0, v0, Lcom/heyzap/house/view/FullscreenVideoView;->loadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->onVideoStart()V

    .line 480
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$MediaPlayerListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-virtual {v0, p2, p3}, Lcom/heyzap/house/view/FullscreenVideoView;->onVideoSizeChanged(II)V

    .line 553
    return-void
.end method
