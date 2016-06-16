.class Lcom/heyzap/house/view/VideoControlView$2;
.super Ljava/lang/Object;
.source "VideoControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/VideoControlView;->updateScrubber(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/VideoControlView;

.field final synthetic val$display:Landroid/util/DisplayMetrics;

.field final synthetic val$percentComplete:F

.field final synthetic val$remainingTextSpan:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/VideoControlView;Landroid/text/SpannableString;FLandroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/heyzap/house/view/VideoControlView$2;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iput-object p2, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$remainingTextSpan:Landroid/text/SpannableString;

    iput p3, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$percentComplete:F

    iput-object p4, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$display:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$remainingTextSpan:Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$2;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v0, v0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$remainingTextSpan:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$2;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v0, v0, Lcom/heyzap/house/view/VideoControlView;->scrubBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$percentComplete:F

    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView$2;->val$display:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView$2;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v1, v1, Lcom/heyzap/house/view/VideoControlView;->scrubBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method
