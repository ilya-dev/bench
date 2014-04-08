namespace Bench;

class Bench {

    /**
     * The start time
     *
     * @var float 
     */
    protected startTime;

    /**
     * The end time 
     *
     * @var float
     */
    protected endTime;

    /**
     * The memory usage
     * 
     * @var integer
     */
    protected memoryUsage;

    /**
     * Start a benchmark
     *
     * @return void
     */
    public function start() -> void
    {
        let this->startTime = \microtime(true);
    }

    /**
     * Finish a benchmark
     *
     * @return void
     */
    public function end() -> void
    {
        let this->endTime = \microtime(true);

        let this->memoryUsage = \memory_get_usage(true);
    }

    /**
     * Get the elapsed time
     *
     * @return float
     */
    public function getTime() -> float
    {
        return (this->endTime - this->startTime);
    }

    /**
     * Get the memory usage
     *
     * @return integer
     */
    public function getMemoryUsage() -> int
    {
        return this->memoryUsage;
    }

    /**
     * Get the memory peak usage
     *
     * @return integer
     */
    public function getMemoryPeak() -> int
    {
        return \memory_get_peak_usage(true); 
    }
    
}

