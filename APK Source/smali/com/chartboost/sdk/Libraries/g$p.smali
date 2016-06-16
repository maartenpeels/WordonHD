.class Lcom/chartboost/sdk/Libraries/g$p;
.super Lcom/chartboost/sdk/Libraries/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:[Lcom/chartboost/sdk/Libraries/g$a;


# direct methods
.method public constructor <init>([Lcom/chartboost/sdk/Libraries/g$a;)V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/g$a;-><init>()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$p;->a:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    .line 312
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g$p;->a:Ljava/lang/String;

    .line 334
    :goto_0
    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string v1, "object must match ALL of the following: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 328
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 332
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object failed to match: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/g$p;->b:[Lcom/chartboost/sdk/Libraries/g$a;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$p;->a:Ljava/lang/String;

    move v0, v3

    .line 320
    :goto_1
    return v0

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
