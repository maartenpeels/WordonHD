.class public Lcom/chartboost/sdk/impl/ai;
.super Lcom/chartboost/sdk/impl/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$2;,
        Lcom/chartboost/sdk/impl/ai$a;,
        Lcom/chartboost/sdk/impl/ai$b;
    }
.end annotation


# instance fields
.field protected A:Lcom/chartboost/sdk/Libraries/j;

.field protected B:Lcom/chartboost/sdk/Libraries/j;

.field protected C:Lcom/chartboost/sdk/Libraries/j;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field protected k:Lcom/chartboost/sdk/impl/ai$b;

.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:I

.field protected v:Lcom/chartboost/sdk/Libraries/j;

.field protected w:Lcom/chartboost/sdk/Libraries/j;

.field protected x:Lcom/chartboost/sdk/Libraries/j;

.field protected y:Lcom/chartboost/sdk/Libraries/j;

.field protected z:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 38
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Z

    .line 44
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 45
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 46
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 47
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->o:I

    .line 48
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    .line 49
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    .line 56
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->t:Z

    .line 57
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->u:I

    .line 485
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    .line 487
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    .line 488
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    .line 489
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    .line 490
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    .line 491
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    .line 492
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    .line 493
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 494
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 496
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->l:I

    .line 497
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/ai;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    return v0
.end method

.method static synthetic k(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->w()V

    return-void
.end method

.method static synthetic l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic m(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic n(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic u(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method

.method static synthetic v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 577
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method static synthetic w(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method

.method private x()V
    .locals 8

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    const-string v7, "reward"

    const-string v6, "currency-name"

    .line 581
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    int-to-float v0, v0

    .line 582
    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->o:I

    int-to-float v1, v1

    .line 583
    new-instance v2, Lcom/chartboost/sdk/impl/ba;

    const-string v3, "/api/video-complete"

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 584
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/ba;->b(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 585
    const-string v3, "location"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v4, v4, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    const-string v3, "reward"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    const-string v4, "reward"

    invoke-virtual {v3, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const-string v3, "currency-name"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    const-string v4, "currency-name"

    invoke-virtual {v3, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    const-string v3, "ad_id"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    const-string v3, "total_time"

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    const-string v1, "playback_time"

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    const-string v0, "force_close"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/ba;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 594
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    .line 688
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v6, "post-video-toaster"

    const-string v5, "post-video-reward-icon"

    const-string v4, "confirmation"

    .line 598
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 625
    :goto_0
    return v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "video-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "replay-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    :cond_1
    iput-boolean v3, p0, Lcom/chartboost/sdk/impl/ai;->j:Z

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "replay-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "replay-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "video-click-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "post-video-reward-icon"

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "post-video-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "video-confirmation-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "video-confirmation-icon"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "post-video-reward-icon"

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 613
    const-string v0, "ux"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video-controls-togglable"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Z

    .line 615
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-toaster"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-toaster"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "tagline"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->r:Z

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "confirmation"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "confirmation"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 618
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    .line 619
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "post-video-reward-toaster"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 620
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->s:Z

    :cond_5
    move v0, v2

    .line 625
    goto/16 :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->d()V

    .line 646
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 647
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 648
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 649
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 650
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 651
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 652
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 653
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 654
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    .line 655
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    .line 656
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    .line 657
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    .line 658
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 659
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    .line 660
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    .line 661
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 662
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    .line 636
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Z

    if-eqz v0, :cond_2

    .line 637
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->i()V

    .line 641
    :goto_0
    return-void

    .line 639
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 547
    :goto_0
    return v0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->g()V

    move v0, v2

    .line 547
    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->k()V

    .line 553
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bh$a;->a(I)V

    .line 555
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-nez v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 558
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 559
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 561
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 565
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->l()V

    .line 566
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-nez v0, :cond_1

    .line 567
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 569
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 570
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->g()V

    .line 571
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->l:I

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    if-eqz v0, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->x()V

    .line 574
    :cond_1
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 5

    .prologue
    const-string v4, "cancel-popup"

    .line 506
    new-instance v0, Lcom/chartboost/sdk/impl/bm$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bm$a;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "cancel-popup"

    invoke-virtual {v1, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bm$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    .line 511
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/ai$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/ai$1;-><init>(Lcom/chartboost/sdk/impl/ai;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bm$b;)Lcom/chartboost/sdk/impl/bm;

    .line 535
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lcom/chartboost/sdk/impl/ai$a;
    .locals 0

    .prologue
    .line 670
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->e()Lcom/chartboost/sdk/f$a;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/ai$a;

    return-object p0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->f:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->r()V

    .line 675
    return-void
.end method

.method protected r()Z
    .locals 2

    .prologue
    .line 678
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 679
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->k:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    return v0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    .line 701
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->b(Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 703
    return-void
.end method

.method public u()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->o:I

    return v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    return v0
.end method
