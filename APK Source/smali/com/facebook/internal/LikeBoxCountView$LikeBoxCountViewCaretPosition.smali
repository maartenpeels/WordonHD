.class public final enum Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/LikeBoxCountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LikeBoxCountViewCaretPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

.field public static final enum TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    new-instance v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    new-instance v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    new-instance v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->$VALUES:[Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    .locals 1

    const-class v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;
    .locals 1

    sget-object v0, Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->$VALUES:[Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0}, [Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    return-object v0
.end method
