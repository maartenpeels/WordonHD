.class public Lcom/heyzap/internal/Constants$CreativeType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreativeType"
.end annotation


# static fields
.field public static INTERSTITIAL:I

.field public static NATIVE:I

.field public static VIDEO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    .line 53
    const/4 v0, 0x4

    sput v0, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(II)Z
    .locals 1

    .prologue
    .line 75
    and-int v0, p0, p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    and-int/2addr v1, p0

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    if-ne v1, v2, :cond_0

    .line 58
    const-string v1, "full_screen_interstitial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    and-int/2addr v1, p0

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    if-ne v1, v2, :cond_1

    .line 63
    const-string v1, "interstitial_video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    and-int/2addr v1, p0

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    if-ne v1, v2, :cond_2

    .line 68
    const-string v1, "native"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
