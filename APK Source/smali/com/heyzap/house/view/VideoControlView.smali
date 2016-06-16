.class public Lcom/heyzap/house/view/VideoControlView;
.super Landroid/widget/FrameLayout;
.source "VideoControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/view/VideoControlView$OnActionListener;
    }
.end annotation


# instance fields
.field private hideButton:Landroid/widget/RelativeLayout;

.field public listener:Lcom/heyzap/house/view/VideoControlView$OnActionListener;

.field public scrubBar:Landroid/view/View;

.field private secondFormatter:Ljava/text/SimpleDateFormat;

.field private skipButton:Landroid/widget/RelativeLayout;

.field public skipButtonText:Ljava/lang/String;

.field private skipButtonTextView:Landroid/widget/TextView;

.field public timeTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "Skip"

    iput-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonText:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "Skip"

    iput-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonText:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/VideoControlView;->setBackgroundColor(I)V

    .line 45
    new-instance v0, Lcom/heyzap/house/view/VideoControlView$1;

    invoke-direct {v0, p0}, Lcom/heyzap/house/view/VideoControlView$1;-><init>(Lcom/heyzap/house/view/VideoControlView;)V

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/VideoControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p2}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->showCountdown:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/heyzap/house/view/VideoControlView;->addScrubBar(Ljava/lang/Boolean;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/house/view/VideoControlView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public addHideButton()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0xa

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/heyzap/house/view/VideoControlView$3;

    invoke-direct {v0, p0}, Lcom/heyzap/house/view/VideoControlView$3;-><init>(Lcom/heyzap/house/view/VideoControlView;)V

    .line 101
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    .line 102
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 103
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 108
    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->hideButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/house/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public addScrubBar(Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    const/16 v6, 0x53

    const/4 v5, -0x2

    const/16 v4, 0xa

    .line 211
    const/4 v0, 0x4

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->scrubBar:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->scrubBar:Landroid/view/View;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->scrubBar:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/house/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const v1, 0x3c23d70a    # 0.01f

    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, -0x777778

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 232
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 234
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 236
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->timeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/heyzap/house/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method

.method public addSkipButton(Ljava/lang/Boolean;J)V
    .locals 11

    .prologue
    const/16 v4, 0x9

    const/4 v10, 0x7

    const/16 v9, 0xb

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 122
    const/4 v0, 0x5

    .line 125
    new-instance v1, Lcom/heyzap/house/view/VideoControlView$4;

    invoke-direct {v1, p0}, Lcom/heyzap/house/view/VideoControlView$4;-><init>(Lcom/heyzap/house/view/VideoControlView;)V

    .line 135
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 143
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v7, v2, v3, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    iget-object v2, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const v6, -0x777778

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 154
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v2

    if-ge v2, v9, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v4, v5, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    iget-object v3, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 163
    const v4, 0x1080022

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v4

    if-ge v4, v9, :cond_0

    .line 166
    invoke-virtual {v3, v7, v7, v2, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 169
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    iget-object v3, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x96

    invoke-static {v3, v4}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 177
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/house/view/VideoControlView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 184
    iget-object v1, p0, Lcom/heyzap/house/view/VideoControlView;->skipButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_1
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->skipButton:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 188
    new-instance v0, Lcom/heyzap/house/view/VideoControlView$5;

    const-wide/16 v4, 0x64

    move-object v1, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/heyzap/house/view/VideoControlView$5;-><init>(Lcom/heyzap/house/view/VideoControlView;JJ)V

    invoke-virtual {v0}, Lcom/heyzap/house/view/VideoControlView$5;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_2
    move v2, v7

    goto/16 :goto_0
.end method

.method public setOnActionListener(Lcom/heyzap/house/view/VideoControlView$OnActionListener;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/heyzap/house/view/VideoControlView;->listener:Lcom/heyzap/house/view/VideoControlView$OnActionListener;

    .line 245
    return-void
.end method

.method public updateScrubber(IF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 61
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "s"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    .line 66
    :cond_0
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView;->secondFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 73
    invoke-virtual {p0}, Lcom/heyzap/house/view/VideoControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 74
    new-instance v3, Lcom/heyzap/house/view/VideoControlView$2;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/heyzap/house/view/VideoControlView$2;-><init>(Lcom/heyzap/house/view/VideoControlView;Landroid/text/SpannableString;FLandroid/util/DisplayMetrics;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 66
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
