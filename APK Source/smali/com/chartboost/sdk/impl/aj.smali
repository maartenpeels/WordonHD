.class public abstract Lcom/chartboost/sdk/impl/aj;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/aj$a;
    }
.end annotation


# instance fields
.field protected D:Lcom/chartboost/sdk/Libraries/j;

.field protected E:Lcom/chartboost/sdk/Libraries/j;

.field protected F:Lcom/chartboost/sdk/Libraries/e$a;

.field protected G:Ljava/lang/String;

.field protected H:F

.field private k:Lcom/chartboost/sdk/Libraries/j;

.field private l:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/aj;->H:F

    .line 136
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 137
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 138
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->D:Lcom/chartboost/sdk/Libraries/j;

    .line 139
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->E:Lcom/chartboost/sdk/Libraries/j;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/aj;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/aj;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->l:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/aj;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/aj;->h()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/j;F)V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/j;->g()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const-string v6, "frame-portrait"

    const-string v5, "frame-landscape"

    const-string v4, "close-portrait"

    const-string v3, "close-landscape"

    .line 144
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 159
    :goto_0
    return v0

    .line 147
    :cond_0
    const-string v0, "ad_id"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->G:Ljava/lang/String;

    .line 148
    const-string v0, "ux"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/aj;->F:Lcom/chartboost/sdk/Libraries/e$a;

    .line 150
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "frame-portrait"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "close-portrait"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_1
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/aj;->i:Z

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "frame-landscape"

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "close-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    :cond_3
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/aj;->j:Z

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->l:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "frame-landscape"

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "frame-portrait"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->E:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "close-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->D:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "close-portrait"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->e:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 166
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 181
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->l:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 182
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 183
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->E:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj;->D:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 185
    iput-object v1, p0, Lcom/chartboost/sdk/impl/aj;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 186
    iput-object v1, p0, Lcom/chartboost/sdk/impl/aj;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 187
    iput-object v1, p0, Lcom/chartboost/sdk/impl/aj;->E:Lcom/chartboost/sdk/Libraries/j;

    .line 188
    iput-object v1, p0, Lcom/chartboost/sdk/impl/aj;->D:Lcom/chartboost/sdk/Libraries/j;

    .line 189
    return-void
.end method
