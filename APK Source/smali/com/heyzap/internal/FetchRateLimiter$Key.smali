.class Lcom/heyzap/internal/FetchRateLimiter$Key;
.super Ljava/lang/Object;
.source "FetchRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/FetchRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field public final orientation:I

.field public final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->tag:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->orientation:I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/heyzap/internal/FetchRateLimiter$1;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/heyzap/internal/FetchRateLimiter$Key;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 56
    :goto_0
    return v0

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 51
    :cond_2
    check-cast p1, Lcom/heyzap/internal/FetchRateLimiter$Key;

    .line 53
    iget v0, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->orientation:I

    iget v1, p1, Lcom/heyzap/internal/FetchRateLimiter$Key;->orientation:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/heyzap/internal/FetchRateLimiter$Key;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    .line 56
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/heyzap/internal/FetchRateLimiter$Key;->orientation:I

    add-int/2addr v0, v1

    .line 63
    return v0
.end method
