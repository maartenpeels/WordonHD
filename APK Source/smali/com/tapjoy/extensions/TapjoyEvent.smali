.class public final enum Lcom/tapjoy/extensions/TapjoyEvent;
.super Ljava/lang/Enum;
.source "TapjoyEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tapjoy/extensions/TapjoyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_AWARDED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_AWARDED_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_CONNECT_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_CONNECT_SUCCESS:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_CONTENT_DID_DISAPPEAR:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_CONTENT_DID_SHOW:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_DID_REQUEST_ACTION:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_EARNED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_GET_DISPLAY_AD:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_GET_DISPLAY_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_GET_FULLSCREEN_AD:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_GET_FULLSCREEN_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SEND_EVENT_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SEND_EVENT_CONTENT_IS_READY:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SEND_EVENT_FAIL:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SPENT_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_SPENT_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIDEO_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIDEO_ERROR:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIDEO_START:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIEW_CLOSED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIEW_CLOSING:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIEW_OPENED:Lcom/tapjoy/extensions/TapjoyEvent;

.field public static final enum TJ_VIEW_OPENING:Lcom/tapjoy/extensions/TapjoyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_CONNECT_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_SUCCESS:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 6
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_CONNECT_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 7
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_TAP_POINTS"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 8
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_TAP_POINTS_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 9
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SPENT_TAP_POINTS"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SPENT_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 10
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SPENT_TAP_POINTS_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SPENT_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 11
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_AWARDED_TAP_POINTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_AWARDED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 12
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_AWARDED_TAP_POINTS_FAILED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_AWARDED_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 13
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_EARNED_TAP_POINTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_EARNED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 14
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIEW_OPENING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENING:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 15
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIEW_OPENED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 16
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIEW_CLOSING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSING:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 17
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIEW_CLOSED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 18
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIDEO_START"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_START:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 19
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIDEO_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_ERROR:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 20
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_VIDEO_COMPLETE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 21
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_GET_FULLSCREEN_AD"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 22
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_GET_FULLSCREEN_AD_FAILED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 23
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_GET_DISPLAY_AD"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 24
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_GET_DISPLAY_AD_FAILED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 25
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SEND_EVENT_COMPLETE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 26
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SEND_EVENT_COMPLETE_WITH_CONTENT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 28
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SEND_EVENT_CONTENT_IS_READY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_CONTENT_IS_READY:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 29
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_SEND_EVENT_FAIL"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_FAIL:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 30
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_CONTENT_DID_SHOW"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_SHOW:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 31
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_CONTENT_DID_DISAPPEAR"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_DISAPPEAR:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 32
    new-instance v0, Lcom/tapjoy/extensions/TapjoyEvent;

    const-string v1, "TJ_DID_REQUEST_ACTION"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/extensions/TapjoyEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_DID_REQUEST_ACTION:Lcom/tapjoy/extensions/TapjoyEvent;

    .line 3
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/tapjoy/extensions/TapjoyEvent;

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_SUCCESS:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONNECT_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SPENT_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SPENT_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_AWARDED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_AWARDED_TAP_POINTS_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_EARNED_TAP_POINTS:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENING:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_OPENED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSING:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIEW_CLOSED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_START:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_ERROR:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_VIDEO_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_FULLSCREEN_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_GET_DISPLAY_AD_FAILED:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_COMPLETE_WITH_CONTENT:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_CONTENT_IS_READY:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_SEND_EVENT_FAIL:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_SHOW:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_CONTENT_DID_DISAPPEAR:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/tapjoy/extensions/TapjoyEvent;->TJ_DID_REQUEST_ACTION:Lcom/tapjoy/extensions/TapjoyEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->$VALUES:[Lcom/tapjoy/extensions/TapjoyEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/extensions/TapjoyEvent;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/extensions/TapjoyEvent;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/extensions/TapjoyEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tapjoy/extensions/TapjoyEvent;->$VALUES:[Lcom/tapjoy/extensions/TapjoyEvent;

    invoke-virtual {v0}, [Lcom/tapjoy/extensions/TapjoyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/extensions/TapjoyEvent;

    return-object v0
.end method
