.class Lcom/jirbo/adcolony/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/jirbo/adcolony/n$u;

.field c:Lcom/jirbo/adcolony/n$s;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1328
    :goto_0
    return v0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$s;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1328
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/ADCData$g;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1333
    if-nez p1, :cond_0

    move v0, v2

    .line 1344
    :goto_0
    return v0

    .line 1335
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    .line 1336
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 1338
    :cond_1
    new-instance v0, Lcom/jirbo/adcolony/n$u;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$u;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$u;

    .line 1339
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$u;

    const-string v1, "pre_popup"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$u;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 1341
    :cond_2
    new-instance v0, Lcom/jirbo/adcolony/n$s;

    invoke-direct {v0}, Lcom/jirbo/adcolony/n$s;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$s;

    .line 1342
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$s;

    const-string v1, "post_popup"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/n$s;->a(Lcom/jirbo/adcolony/ADCData$g;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1344
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/jirbo/adcolony/n$c;->a:Z

    if-nez v0, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->b:Lcom/jirbo/adcolony/n$u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$u;->b()V

    .line 1352
    iget-object v0, p0, Lcom/jirbo/adcolony/n$c;->c:Lcom/jirbo/adcolony/n$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$s;->b()V

    goto :goto_0
.end method
