.class Lcom/chartboost/sdk/Chartboost$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Chartboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 939
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->k()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/chartboost/sdk/Chartboost$a;->a:I

    .line 940
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    .line 941
    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    .line 942
    return-void

    .line 939
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->k()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 940
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/k;->hashCode()I

    move-result v1

    goto :goto_1

    .line 941
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;-><init>()V

    return-void
.end method

.method private a()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 934
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 945
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost$a;->a()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 946
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 947
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->clearCache()V

    .line 948
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/k;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/Chartboost$a;->b:I

    if-ne v1, v2, :cond_1

    .line 949
    sput-object v3, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 950
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->k()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->k()Lcom/chartboost/sdk/CBImpressionActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/chartboost/sdk/Chartboost$a;->a:I

    if-ne v1, v2, :cond_2

    .line 951
    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;

    .line 952
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/chartboost/sdk/Chartboost$a;->c:I

    if-ne v0, v1, :cond_3

    .line 953
    invoke-static {v3}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 954
    :cond_3
    return-void
.end method
