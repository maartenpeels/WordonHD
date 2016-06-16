.class public Lcom/chartboost/sdk/impl/as;
.super Lcom/chartboost/sdk/impl/aq;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/impl/ax;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/chartboost/sdk/impl/av;

.field private g:Lcom/chartboost/sdk/impl/bl;

.field private h:I

.field private i:Landroid/graphics/Point;

.field private j:Lcom/chartboost/sdk/Libraries/j;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x2

    const/high16 v6, -0x1000000

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 77
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/aq;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/ax;

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->setGravity(I)V

    .line 84
    invoke-static {p2}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    .line 86
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/high16 v2, 0x41a80000    # 21.0f

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 91
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 93
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/high16 v2, 0x41800000    # 16.0f

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 97
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 99
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v0, 0x41900000    # 18.0f

    :goto_2
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    new-instance v0, Lcom/chartboost/sdk/impl/as$1;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/as$1;-><init>(Lcom/chartboost/sdk/impl/as;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    .line 111
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    new-instance v0, Lcom/chartboost/sdk/impl/av;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/av;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    .line 115
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/as;->setFocusable(Z)V

    .line 117
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->setGravity(I)V

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/as;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/as;->addView(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/as;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void

    .line 88
    :cond_0
    const/high16 v2, 0x41800000    # 16.0f

    goto/16 :goto_0

    .line 94
    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    goto/16 :goto_1

    .line 100
    :cond_2
    const/high16 v0, 0x41300000    # 11.0f

    goto :goto_2
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/as;)Lcom/chartboost/sdk/impl/bl;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    return-object v0
.end method

.method private a(Lcom/chartboost/sdk/impl/bk;ILcom/chartboost/sdk/Libraries/e$a;)V
    .locals 6

    .prologue
    const-string v2, "checksum"

    .line 194
    invoke-virtual {p3}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 197
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, ""

    .line 199
    const-string v1, "checksum"

    invoke-virtual {p3, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "checksum"

    invoke-virtual {p3, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string v0, "checksum"

    invoke-virtual {p3, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 202
    :goto_1
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p3, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/bd$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/as;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private c()I
    .locals 3

    .prologue
    const/16 v2, 0x4a

    const/16 v1, 0x29

    .line 238
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 245
    goto :goto_0

    :cond_2
    move v0, v1

    .line 247
    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    const/16 v1, 0x86

    .line 222
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 233
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    return v0

    .line 226
    :cond_0
    const/16 v0, 0x4b

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_2
    const/16 v0, 0x4d

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string v7, "deep-link"

    const-string v6, "border-color"

    const-string v3, "offset"

    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->b:Landroid/widget/TextView;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "Unknown App"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v0, "publisher"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    :goto_0
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :goto_1
    const-string v0, "border-color"

    invoke-virtual {p1, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x49494a

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/impl/as;->h:I

    .line 150
    const-string v0, "offset"

    invoke-virtual {p1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    new-instance v0, Landroid/graphics/Point;

    const-string v1, "offset"

    invoke-virtual {p1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v1

    const-string v2, "offset"

    invoke-virtual {p1, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "y"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->i:Landroid/graphics/Point;

    .line 156
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    .line 157
    const-string v0, "deep-link"

    invoke-virtual {p1, v7}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "deep-link"

    invoke-virtual {p1, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax;->l:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax;->l:Lcom/chartboost/sdk/Libraries/j;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    .line 169
    :goto_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    :goto_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v1, :cond_8

    .line 174
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 175
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/j;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->c()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/j;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 183
    :goto_6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/as;->c()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/chartboost/sdk/impl/as;->a(Lcom/chartboost/sdk/impl/bk;ILcom/chartboost/sdk/Libraries/e$a;)V

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    iget v1, p0, Lcom/chartboost/sdk/impl/as;->h:I

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->a(I)V

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    const v1, 0x3e2aaaab

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->a(F)V

    .line 190
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->b()V

    .line 191
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->c:Landroid/widget/TextView;

    const-string v1, "publisher"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->d:Landroid/widget/TextView;

    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 147
    :cond_2
    const-string v0, "border-color"

    invoke-virtual {p1, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 153
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->i:Landroid/graphics/Point;

    goto/16 :goto_3

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    const-string v1, "Play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 164
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->a:Lcom/chartboost/sdk/impl/ax;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/Libraries/j;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/as;->j:Lcom/chartboost/sdk/Libraries/j;

    goto/16 :goto_4

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    const-string v1, "Install"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 169
    :cond_7
    const/4 v0, 0x7

    goto/16 :goto_5

    .line 177
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->a()Landroid/widget/TextView;

    move-result-object v0

    const v1, -0xde5819

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/bl;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    goto/16 :goto_6
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v0

    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/as;->a()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    iget-object v2, p0, Lcom/chartboost/sdk/impl/as;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5, v0, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    iget-object v2, p0, Lcom/chartboost/sdk/impl/as;->g:Lcom/chartboost/sdk/impl/bl;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/as;->i:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/as;->i:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/chartboost/sdk/impl/bl;->setPadding(IIII)V

    .line 215
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/as;->f:Lcom/chartboost/sdk/impl/av;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/av;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 217
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/aq;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object p1, p0, Lcom/chartboost/sdk/impl/as;->k:Landroid/view/View$OnClickListener;

    .line 133
    return-void
.end method
