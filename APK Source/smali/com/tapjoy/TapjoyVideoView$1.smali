.class Lcom/tapjoy/TapjoyVideoView$1;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->startVideo()V
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
    .line 451
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$1;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "VideoView"

    .line 455
    const-string v1, "VideoView"

    const-string v1, "SENDING CLICK..."

    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/OldTapjoyVideoData;
    invoke-static {}, Lcom/tapjoy/TapjoyVideoView;->access$200()Lcom/tapjoy/OldTapjoyVideoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/OldTapjoyVideoData;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 459
    .local v0, "response":Lcom/tapjoy/TapjoyHttpURLResponse;
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-string v1, "VideoView"

    const-string v1, "CLICK REQUEST SUCCESS!"

    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$1;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v2, 0x1

    # setter for: Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyVideoView;->access$302(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 464
    :cond_0
    return-void
.end method
