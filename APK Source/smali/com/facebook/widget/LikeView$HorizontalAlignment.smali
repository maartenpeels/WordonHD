.class public final enum Lcom/facebook/widget/LikeView$HorizontalAlignment;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/LikeView$HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field public static final enum CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field static DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field public static final enum LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

.field public static final enum RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "CENTER"

    const-string v2, "center"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    new-instance v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/widget/LikeView$HorizontalAlignment;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->$VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    sput-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->intValue:I

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/LikeView$HorizontalAlignment;)I
    .locals 1

    invoke-direct {p0}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 5

    invoke-static {}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->values()[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-direct {v3}, Lcom/facebook/widget/LikeView$HorizontalAlignment;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getValue()I
    .locals 1

    iget v0, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 1

    const-class v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/facebook/widget/LikeView$HorizontalAlignment;
    .locals 1

    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->$VALUES:[Lcom/facebook/widget/LikeView$HorizontalAlignment;

    invoke-virtual {v0}, [Lcom/facebook/widget/LikeView$HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/LikeView$HorizontalAlignment;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->stringValue:Ljava/lang/String;

    return-object v0
.end method