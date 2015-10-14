.class Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;
.super Ljava/lang/Object;
.source "FullscreenVideoView.java"

# interfaces
.implements Lcom/heyzap/house/view/VideoControlView$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/view/FullscreenVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVideoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/FullscreenVideoView;


# direct methods
.method private constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/house/view/FullscreenVideoView;Lcom/heyzap/house/view/FullscreenVideoView$1;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;-><init>(Lcom/heyzap/house/view/FullscreenVideoView;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->model:Lcom/heyzap/house/model/VideoModel;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$600(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/model/VideoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->allowClick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->click()V

    .line 455
    :cond_1
    return-void
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I
    invoke-static {v1}, Lcom/heyzap/house/view/FullscreenVideoView;->access$500(Lcom/heyzap/house/view/FullscreenVideoView;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # setter for: Lcom/heyzap/house/view/FullscreenVideoView;->playbackDuration:I
    invoke-static {v1, v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$502(Lcom/heyzap/house/view/FullscreenVideoView;I)I

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$300(Lcom/heyzap/house/view/FullscreenVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 436
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->this$0:Lcom/heyzap/house/view/FullscreenVideoView;

    # getter for: Lcom/heyzap/house/view/FullscreenVideoView;->listener:Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;
    invoke-static {v0}, Lcom/heyzap/house/view/FullscreenVideoView;->access$400(Lcom/heyzap/house/view/FullscreenVideoView;)Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;->hide()V

    goto :goto_0
.end method

.method public onSkip()V
    .locals 0

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/heyzap/house/view/FullscreenVideoView$OnVideoActionListener;->onHide()V

    .line 423
    return-void
.end method
