.class Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookTimeSpentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV1"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final interruptionCount:I

.field private final lastResumeTime:J

.field private final lastSuspendTime:J

.field private final millisecondsSpentInSession:J


# direct methods
.method constructor <init>(JJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    iput-wide p3, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    iput-wide p5, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    iput p7, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 9

    new-instance v0, Lcom/facebook/FacebookTimeSpentData;

    iget-wide v1, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastResumeTime:J

    iget-wide v3, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->lastSuspendTime:J

    iget-wide v5, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->millisecondsSpentInSession:J

    iget v7, p0, Lcom/facebook/FacebookTimeSpentData$SerializationProxyV1;->interruptionCount:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/FacebookTimeSpentData;-><init>(JJJILcom/facebook/FacebookTimeSpentData$1;)V

    return-object v0
.end method
