.class Lcom/tapjoy/TapjoyVideoView$3;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v5, 0x1

    const-string v6, "VideoView"

    .line 573
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$500(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # invokes: Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I
    invoke-static {v4}, Lcom/tapjoy/TapjoyVideoView;->access$400(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    int-to-float v0, v2

    .line 577
    .local v0, "duration":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 580
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$700(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "start"

    # invokes: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 583
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # setter for: Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$702(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v1, v2

    .line 587
    .local v1, "timeElapsed":F
    div-float v2, v0, v7

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$900(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 589
    const-string v2, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video 1st quartile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "firstQuartile"

    # invokes: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # setter for: Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$902(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 594
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$1000(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    const-string v2, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video midpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "midpoint"

    # invokes: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # setter for: Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1002(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 601
    :cond_2
    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v0

    div-float/2addr v2, v7

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$1100(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 603
    const-string v2, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video 3rd quartile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "thirdQuartile"

    # invokes: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # setter for: Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1102(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 608
    .end local v1    # "timeElapsed":F
    :cond_3
    return-void
.end method
