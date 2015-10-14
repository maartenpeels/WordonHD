.class Lcom/jirbo/adcolony/n$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/jirbo/adcolony/n$l;

.field m:Lcom/jirbo/adcolony/n$g;

.field n:Lcom/jirbo/adcolony/n$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1417
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1420
    :goto_0
    return v0

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1420
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1425
    const-string v0, "scale"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/n$t;->a:I

    .line 1426
    const-string v0, "label_reward"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->b:Ljava/lang/String;

    .line 1427
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/n$t;->c:I

    .line 1428
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/n$t;->d:I

    .line 1429
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    .line 1430
    const-string v0, "image_last_modified"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->f:Ljava/lang/String;

    .line 1431
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->g:Ljava/lang/String;

    .line 1432
    const-string v0, "label_rgba"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->h:Ljava/lang/String;

    .line 1433
    const-string v0, "label_shadow_rgba"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->i:Ljava/lang/String;

    .line 1434
    const-string v0, "label_fraction"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->j:Ljava/lang/String;

    .line 1435
    const-string v0, "label_html"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->k:Ljava/lang/String;

    .line 1437
    new-instance v0, Lcom/jirbo/adcolony/n$l;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$l;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    .line 1438
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$l;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1446
    :goto_0
    return v0

    .line 1440
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    .line 1441
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    const-string v1, "option_yes"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 1443
    :cond_1
    new-instance v0, Lcom/jirbo/adcolony/n$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$t;->n:Lcom/jirbo/adcolony/n$g;

    .line 1444
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->n:Lcom/jirbo/adcolony/n$g;

    const-string v1, "option_no"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$g;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1446
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1451
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/n$t;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/n$t;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->l:Lcom/jirbo/adcolony/n$l;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$l;->b()V

    .line 1453
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->m:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1454
    iget-object v0, p0, Lcom/jirbo/adcolony/n$t;->n:Lcom/jirbo/adcolony/n$g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$g;->b()V

    .line 1455
    return-void
.end method
