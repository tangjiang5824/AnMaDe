.class final Lcom/millennialmedia/android/AccelerometerHelper$1;
.super Ljava/lang/Object;
.source "AccelerometerHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AccelerometerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private currentTime:J

.field private force:F

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private prevShakeTime:J

.field private prevTime:J

.field private timeDifference:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    .line 168
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    .line 169
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    .line 170
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastX:F

    .line 171
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastY:F

    .line 172
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastZ:F

    .line 173
    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->force:F

    .line 174
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    .line 175
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevTime:J

    .line 176
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->timeDifference:J

    .line 177
    iput-wide v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevShakeTime:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 185
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    .line 188
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    .line 189
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    .line 190
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    .line 192
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    iget-wide v2, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->timeDifference:J

    .line 193
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->timeDifference:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 196
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->access$000()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    iget v2, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    iget v3, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/android/AccelerometerListener;->didAccelerate(FFF)V

    .line 198
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastZ:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-wide v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->timeDifference:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->force:F

    .line 199
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->access$000()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    iget v2, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    iget v3, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    invoke-interface {v0, v1, v2, v3}, Lcom/millennialmedia/android/AccelerometerListener;->didAccelerate(FFF)V

    .line 200
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->force:F

    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->access$100()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 202
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    iget-wide v2, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevShakeTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->access$200()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerHelper;->access$000()Lcom/millennialmedia/android/AccelerometerListener;

    move-result-object v0

    iget v1, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->force:F

    invoke-interface {v0, v1}, Lcom/millennialmedia/android/AccelerometerListener;->didShake(F)V

    .line 207
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevShakeTime:J

    .line 209
    :cond_1
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->x:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastX:F

    .line 210
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->y:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastY:F

    .line 211
    iget v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->z:F

    iput v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->lastZ:F

    .line 212
    iget-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->currentTime:J

    iput-wide v0, p0, Lcom/millennialmedia/android/AccelerometerHelper$1;->prevTime:J

    .line 214
    :cond_2
    return-void
.end method
