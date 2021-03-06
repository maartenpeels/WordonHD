.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final EH:Ljava/lang/String;

.field final EI:J

.field final EJ:J

.field private volatile EK:Ljava/lang/String;

.field final xH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/d;

    invoke-direct {v0}, Lcom/google/android/gms/drive/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .locals 4
    .param p1, "versionCode"    # I
    .param p2, "resourceId"    # Ljava/lang/String;
    .param p3, "sqlId"    # J
    .param p5, "databaseInstanceId"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EK:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->xH:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->z(Z)V

    if-nez p2, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/fq;->z(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->EJ:J

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "sqlId"    # J
    .param p4, "databaseInstanceId"    # J

    .prologue
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static aw(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 6

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/fq;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v3, "DriveId:"

    const-string v0, "DriveId:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DriveId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fq;->b(ZLjava/lang/Object;)V

    const-string v0, "DriveId:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->f([B)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method static f([B)Lcom/google/android/gms/drive/DriveId;
    .locals 7

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/drive/internal/y;->g([B)Lcom/google/android/gms/drive/internal/y;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ks; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const-string v0, ""

    iget-object v1, v5, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    iget v1, v5, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    iget-wide v3, v5, Lcom/google/android/gms/drive/internal/y;->FD:J

    iget-wide v5, v5, Lcom/google/android/gms/drive/internal/y;->FE:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, v5, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EK:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->fC()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DriveId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EK:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EK:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v0, :cond_0

    move v0, v4

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v0, p1, Lcom/google/android/gms/drive/DriveId;->EJ:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->EJ:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "DriveId"

    const-string v1, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/google/android/gms/drive/DriveId;->EI:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lcom/google/android/gms/drive/DriveId;->EI:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method final fC()[B
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    iget v1, p0, Lcom/google/android/gms/drive/DriveId;->xH:I

    iput v1, v0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/drive/internal/y;->FC:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    iput-wide v1, v0, Lcom/google/android/gms/drive/internal/y;->FD:J

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->EJ:J

    iput-wide v1, v0, Lcom/google/android/gms/drive/internal/y;->FE:J

    invoke-static {v0}, Lcom/google/android/gms/internal/kt;->d(Lcom/google/android/gms/internal/kt;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->EH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->EJ:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->EI:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/d;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method
