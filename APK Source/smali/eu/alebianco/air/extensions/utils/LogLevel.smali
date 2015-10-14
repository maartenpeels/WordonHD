.class public final enum Leu/alebianco/air/extensions/utils/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leu/alebianco/air/extensions/utils/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leu/alebianco/air/extensions/utils/LogLevel;

.field public static final enum DEBUG:Leu/alebianco/air/extensions/utils/LogLevel;

.field public static final enum ERROR:Leu/alebianco/air/extensions/utils/LogLevel;

.field public static final enum FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

.field public static final enum INFO:Leu/alebianco/air/extensions/utils/LogLevel;

.field public static final enum WARN:Leu/alebianco/air/extensions/utils/LogLevel;


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 17
    new-instance v0, Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "INFO"

    const-string v2, "INFO"

    invoke-direct {v0, v1, v6, v2, v5}, Leu/alebianco/air/extensions/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    .line 18
    new-instance v0, Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "DEBUG"

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v7, v2, v4}, Leu/alebianco/air/extensions/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->DEBUG:Leu/alebianco/air/extensions/utils/LogLevel;

    .line 19
    new-instance v0, Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "WARN"

    const-string v2, "WARN"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v8, v2, v3}, Leu/alebianco/air/extensions/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->WARN:Leu/alebianco/air/extensions/utils/LogLevel;

    .line 20
    new-instance v0, Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "ERROR"

    const-string v2, "ERROR"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Leu/alebianco/air/extensions/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->ERROR:Leu/alebianco/air/extensions/utils/LogLevel;

    .line 21
    new-instance v0, Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "FATAL"

    const-string v2, "FATAL"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v5, v2, v3}, Leu/alebianco/air/extensions/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Leu/alebianco/air/extensions/utils/LogLevel;

    sget-object v1, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Leu/alebianco/air/extensions/utils/LogLevel;->DEBUG:Leu/alebianco/air/extensions/utils/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Leu/alebianco/air/extensions/utils/LogLevel;->WARN:Leu/alebianco/air/extensions/utils/LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Leu/alebianco/air/extensions/utils/LogLevel;->ERROR:Leu/alebianco/air/extensions/utils/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->$VALUES:[Leu/alebianco/air/extensions/utils/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "n"    # Ljava/lang/String;
    .param p4, "p"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Leu/alebianco/air/extensions/utils/LogLevel;->name:Ljava/lang/String;

    .line 29
    iput p4, p0, Leu/alebianco/air/extensions/utils/LogLevel;->priority:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/alebianco/air/extensions/utils/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Leu/alebianco/air/extensions/utils/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Leu/alebianco/air/extensions/utils/LogLevel;

    return-object p0
.end method

.method public static values()[Leu/alebianco/air/extensions/utils/LogLevel;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->$VALUES:[Leu/alebianco/air/extensions/utils/LogLevel;

    invoke-virtual {v0}, [Leu/alebianco/air/extensions/utils/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/alebianco/air/extensions/utils/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Leu/alebianco/air/extensions/utils/LogLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Leu/alebianco/air/extensions/utils/LogLevel;->priority:I

    return v0
.end method
