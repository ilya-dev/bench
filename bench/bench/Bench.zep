namespace Bench;

class Bench {

    /**
     * The start time
     *
     * @var float 
     */
    protected startTime = 0.0;

    /**
     * The end time 
     *
     * @var float
     */
    protected endTime = 0.0;

    /**
     * The memory usage
     * 
     * @var integer
     */
    protected memoryUsage = 0;

    /**
     * Start a benchmark
     *
     * @return void
     */
    public function start() -> void
    {
        let this->startTime = \microtime(true);

        let this->memoryUsage = 0;

        let this->endTime = 0.0;
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

