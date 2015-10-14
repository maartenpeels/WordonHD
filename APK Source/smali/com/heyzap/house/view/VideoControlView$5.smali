.class Lcom/heyzap/house/view/VideoControlView$5;
.super Landroid/os/CountDownTimer;
.source "VideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/VideoControlView;->addSkipButton(Ljava/lang/Boolean;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/VideoControlView;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/VideoControlView;JJ)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    # getter for: Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/heyzap/house/view/VideoControlView;->access$100(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 201
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v1, v1, Lcom/heyzap/house/view/VideoControlView;->skipButtonText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 203
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    # getter for: Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/heyzap/house/view/VideoControlView;->access$000(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    # getter for: Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heyzap/house/view/VideoControlView;->access$000(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    return-void
.end method

.method public onTick(J)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 196
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$5;->this$0:Lcom/heyzap/house/view/VideoControlView;

    # getter for: Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/heyzap/house/view/VideoControlView;->access$000(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method
