.class public Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;
.super Ljava/lang/Exception;


# static fields
.field public static b04460446ц044604460446:I = 0x0

.field public static b0446ц0446044604460446:I = 0x2

.field public static bц0446ц044604460446:I = 0x4f

.field public static bцц0446044604460446:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    :cond_0
    const/4 v0, 0x3

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v0, v0, 0x9

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v3, 0x5

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget v0, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->bц0446ц044604460446:I

    sget v1, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->bцц0446044604460446:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->bц0446ц044604460446:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->b0446ц0446044604460446:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->b04460446ц044604460446:I

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v2, 0x2

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->bц04460446044604460446()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->bц0446ц044604460446:I

    const/16 v0, 0x63

    sput v0, Lcom/immersion/hapticmediasdk/models/BeyondHapticDataException;->b04460446ц044604460446:I

    goto :goto_0
.end method

.method public static bц04460446044604460446()I
    .locals 1

    const/16 v0, 0x5c

    return v0
.end method
