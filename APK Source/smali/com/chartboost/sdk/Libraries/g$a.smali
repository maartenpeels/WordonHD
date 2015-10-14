.class public abstract Lcom/chartboost/sdk/Libraries/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method

.method public a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z
    .locals 2

    .prologue
    .line 30
    instance-of v0, p1, Lcom/chartboost/sdk/Libraries/e$a;

    if-eqz v0, :cond_2

    .line 31
    check-cast p1, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/e$a;->n()Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/g$a;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/g$a;->a:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_0
    return v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/g$a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
