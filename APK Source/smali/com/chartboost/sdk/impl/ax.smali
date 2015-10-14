.class public Lcom/chartboost/sdk/impl/ax;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ax$1;,
        Lcom/chartboost/sdk/impl/ax$b;,
        Lcom/chartboost/sdk/impl/ax$a;
    }
.end annotation


# instance fields
.field protected k:Lcom/chartboost/sdk/Libraries/j;

.field protected l:Lcom/chartboost/sdk/Libraries/j;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/Libraries/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/chartboost/sdk/Libraries/j;

.field private o:Lcom/chartboost/sdk/Libraries/j;

.field private p:Lcom/chartboost/sdk/Libraries/j;

.field private q:Lcom/chartboost/sdk/Libraries/j;

.field private r:Lcom/chartboost/sdk/Libraries/j;

.field private s:Lcom/chartboost/sdk/Libraries/j;

.field private t:Lcom/chartboost/sdk/Libraries/j;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/chartboost/sdk/Libraries/j;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Lcom/chartboost/sdk/Libraries/e$a;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/util/List;

    .line 328
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->t:Lcom/chartboost/sdk/Libraries/j;

    .line 329
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->r:Lcom/chartboost/sdk/Libraries/j;

    .line 330
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->q:Lcom/chartboost/sdk/Libraries/j;

    .line 331
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->s:Lcom/chartboost/sdk/Libraries/j;

    .line 332
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->n:Lcom/chartboost/sdk/Libraries/j;

    .line 333
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->p:Lcom/chartboost/sdk/Libraries/j;

    .line 334
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->o:Lcom/chartboost/sdk/Libraries/j;

    .line 335
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 336
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ax;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    return p1
.end method

.method private a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    .line 413
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ax;->u:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ax;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ax;->h()V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ax;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    return v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ax;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    return v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->q:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->r:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->t:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ax;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    return v0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->w:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->o:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic k(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->p:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic l(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->n:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic m(Lcom/chartboost/sdk/impl/ax;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/chartboost/sdk/impl/ax;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->f:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const-string v8, "text-color"

    const-string v7, "header-text"

    const-string v6, "background-color"

    const-string v5, "assets"

    .line 346
    invoke-super {p0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 406
    :goto_0
    return v0

    .line 349
    :cond_0
    const-string v0, "cells"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    move v0, v2

    .line 352
    goto :goto_0

    .line 356
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ax;->u:Ljava/util/Set;

    move v1, v2

    .line 359
    :goto_1
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 360
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    .line 365
    const-string v4, "regular"

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 366
    const-string v3, "assets"

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    const-string v3, "icon"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V

    .line 359
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    :cond_3
    const-string v4, "featured"

    invoke-virtual {v3, v4}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    const-string v3, "assets"

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    const-string v3, "portrait"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V

    .line 374
    const-string v3, "landscape"

    invoke-direct {p0, v2, v3}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Libraries/e$a;Ljava/lang/String;)V

    goto :goto_2

    .line 376
    :cond_4
    const-string v2, "webview"

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->n:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->p:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "close-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->o:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "close-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->t:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "header-center"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->q:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "header-portrait"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->r:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "header-landscape"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->s:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "header-tile"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->l:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "play-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "install-button"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "header-height"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->w:Lcom/chartboost/sdk/Libraries/e$a;

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->w:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->w:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/e$a;->k()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    .line 399
    :goto_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "background-color"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "background-color"

    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->a(Ljava/lang/String;)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->x:I

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "header-text"

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "header-text"

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->z:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "text-color"

    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "text-color"

    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->a(Ljava/lang/String;)I

    move-result v0

    :goto_6
    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->y:I

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 395
    :cond_6
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ax;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x50

    :goto_7
    iput v0, p0, Lcom/chartboost/sdk/impl/ax;->v:I

    goto :goto_3

    :cond_7
    const/16 v0, 0x28

    goto :goto_7

    .line 399
    :cond_8
    const v0, -0xde5819

    goto :goto_4

    .line 401
    :cond_9
    const-string v0, "More Free Games"

    goto :goto_5

    .line 403
    :cond_a
    const/4 v0, -0x1

    goto :goto_6
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 341
    new-instance v0, Lcom/chartboost/sdk/impl/ax$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/ax$a;-><init>(Lcom/chartboost/sdk/impl/ax;Landroid/content/Context;Lcom/chartboost/sdk/impl/ax$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lcom/chartboost/sdk/f;->d()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ax;->m:Ljava/util/List;

    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/j;

    .line 422
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 425
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->n:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 426
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->p:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 427
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->o:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 428
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->t:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 429
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->s:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->q:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 431
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->r:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 432
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->l:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 433
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ax;->k:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 434
    return-void
.end method
