.class public Lcom/chartboost/sdk/impl/ah;
.super Lcom/chartboost/sdk/impl/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ah$a;
    }
.end annotation


# instance fields
.field private k:Lcom/chartboost/sdk/Libraries/j;

.field private l:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/aj;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 86
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 87
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ah;)Lcom/chartboost/sdk/Libraries/j;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v4, "ad-portrait"

    const-string v3, "ad-landscape"

    .line 97
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/aj;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad-portrait"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ah;->i:Z

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->e:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ah;->j:Z

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "ad-landscape"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    const-string v1, "ad-portrait"

    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/chartboost/sdk/impl/ah$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/ah$a;-><init>(Lcom/chartboost/sdk/impl/ah;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0}, Lcom/chartboost/sdk/impl/aj;->d()V

    .line 113
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 114
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 115
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->l:Lcom/chartboost/sdk/Libraries/j;

    .line 116
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ah;->k:Lcom/chartboost/sdk/Libraries/j;

    .line 117
    return-void
.end method
